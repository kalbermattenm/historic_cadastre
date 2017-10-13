# -*- coding: utf-8 -*-
  #===========================================================================
  ${self.title()}:
  #===========================================================================
    metaData:
      title: '<%text>$</%text>{title}'

    #-------------------------------------------------------------------------
    mainPage:
      pageSize: A3
      rotation: true
      landscape: true
      backgroundPdf: 'file:///<%text>$</%text>{configDir}/A3_paysage.pdf'
      marginTop: 62
      items:
        - !map
          width: 1146
          height: 690
          align:center
        - !columns
          absoluteX: 488
          absoluteY: 78
          width: 500
          items:
            - !scalebar
              maxSize: 200
              type: bar_sub
              intervals: 5
              textDirection: up
              barDirection: up
              align: left
              barSize: 3
              lineWidth: 0.3
              fontSize: 8
              labelDistance: 4
              barBgColor: #FFFFFF
        - !columns
          condition: showDescription
          absoluteX: 23
          absoluteY: 90
          width: 400
          items:
            - !text
              text: '<%text>$</%text>{txtDescription}'
              fontSize: 8
              align: left
              vertAlign: top
        - !columns
          absoluteX: 23
          absoluteY: 50
          width: 200
          items:
            - !text
              text: 'Impression du : <%text>$</%text>{now dd.MM.yyyy HH:mm:ss}'
              fontSize: 8
              align: left
              vertAlign: top
        # Title
        - !columns
          absoluteX: 23
          absoluteY: 75
          width: 118
          items:
            - !text
              text: '<%text>$</%text>{title}'
              fontSize: 10
        # Comment
        - !columns
          absoluteX: 849
          absoluteY: 78
          width: 200
          items:
            - !text
              text: '<%text>$</%text>{comment}'
              fontSize: 7
              align: left
        # Scale
        - !columns
          absoluteX: 488
          absoluteY: 57
          width: 150
          items:
            - !text
              text: 'Échelle 1:<%text>$</%text>{scale}'
              fontSize: 9
              align: center

## end of global template code
## start of block specific code

## the backslash tell mako To Not write a new line at the end
<%def name="title()">\
2 A3 paysage\
</%def>
