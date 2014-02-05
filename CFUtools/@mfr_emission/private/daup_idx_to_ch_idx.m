function ch_idx = daup_idx_to_ch_idx(daup_idx)

% Conversion Table
daup_to_ch = ...
    [1 2 3 4 65 66 67 68 129 130 131 132 385 386 387 388; ...
     5 6 7 8 69 70 71 72 133 134 135 136 389 390 391 392; ...
     9 10 11 12 73 74 75 76 137 138 139 140 393 394 395 396; ...
     13 14 15 16 77 78 79 80 141 142 143 144 397 398 399 400; ...
     17 18 19 20 81 82 83 84 145 146 147 148 401 402 403 404; ...
     21 22 23 24 85 86 87 88 149 150 151 152 405 406 407 408; ...
     25 26 27 28 89 90 91 92 153 154 155 156 409 410 411 412; ...
     29 30 31 32 93 94 95 96 157 158 159 160 413 414 415 416; ...
     33 34 35 36 97 98 99 100 161 162 163 164 417 418 419 420; ...
     37 38 39 40 101 102 103 104 165 166 167 168 421 422 423 424; ...
     41 42 43 44 105 106 107 108 169 170 171 172 425 426 427 428; ...
     45 46 47 48 109 110 111 112 173 174 175 176 429 430 431 432; ...
     49 50 51 52 113 114 115 116 177 178 179 180 433 434 435 436; ...
     53 54 55 56 117 118 119 120 181 182 183 184 437 438 439 440; ...
     57 58 59 60 121 122 123 124 185 186 187 188 441 442 443 444; ...
     61 62 63 64 125 126 127 128 189 190 191 192 445 446 447 448; ...
     193 194 195 196 257 258 259 260 321 322 323 324 449 450 451 452; ...
     197 198 199 200 261 262 263 264 325 326 327 328 453 454 455 456; ...
     201 202 203 204 265 266 267 268 329 330 331 332 457 458 459 460; ...
     205 206 207 208 269 270 271 272 333 334 335 336 461 462 463 464; ...
     209 210 211 212 273 274 275 276 337 338 339 340 465 466 467 468; ...
     213 214 215 216 277 278 279 280 341 342 343 344 469 470 471 472; ...
     217 218 219 220 281 282 283 284 345 346 347 348 473 474 475 476; ...
     221 222 223 224 285 286 287 288 349 350 351 352 477 478 479 480; ...
     225 226 227 228 289 290 291 292 353 354 355 356 481 482 483 484; ...
     229 230 231 232 293 294 295 296 357 358 359 360 485 486 487 488; ...
     233 234 235 236 297 298 299 300 361 362 363 364 489 490 491 492; ...
     237 238 239 240 301 302 303 304 365 366 367 368 493 494 495 496; ...
     241 242 243 244 305 306 307 308 369 370 371 372 497 498 499 500; ...
     245 246 247 248 309 310 311 312 373 374 375 376 501 502 503 504; ...
     249 250 251 252 313 314 315 316 377 378 379 380 505 506 507 508; ...
     253 254 255 256 317 318 319 320 381 382 383 384 509 510 511 512; ...
     769 770 771 772 833 834 835 836 897 898 899 900 961 962 963 964; ...
     773 774 775 776 837 838 839 840 901 902 903 904 965 966 967 968; ...
     777 778 779 780 841 842 843 844 905 906 907 908 969 970 971 972; ...
     781 782 783 784 845 846 847 848 909 910 911 912 973 974 975 976; ...
     785 786 787 788 849 850 851 852 913 914 915 916 977 978 979 980; ...
     789 790 791 792 853 854 855 856 917 918 919 920 981 982 983 984; ...
     793 794 795 796 857 858 859 860 921 922 923 924 985 986 987 988; ...
     797 798 799 800 861 862 863 864 925 926 927 928 989 990 991 992; ...
     801 802 803 804 865 866 867 868 929 930 931 932 993 994 995 996; ...
     805 806 807 808 869 870 871 872 933 934 935 936 997 998 999 1000; ...
     809 810 811 812 873 874 875 876 937 938 939 940 1001 1002 1003 1004; ...
     813 814 815 816 877 878 879 880 941 942 943 944 1005 1006 1007 1008; ...
     817 818 819 820 881 882 883 884 945 946 947 948 1009 1010 1011 1012; ...
     821 822 823 824 885 886 887 888 949 950 951 952 1013 1014 1015 1016; ...
     825 826 827 828 889 890 891 892 953 954 955 956 1017 1018 1019 1020; ...
     829 830 831 832 893 894 895 896 957 958 959 960 1021 1022 1023 1024; ...
     577 578 579 580 641 642 643 644 705 706 707 708 513 514 515 516; ...
     581 582 583 584 645 646 647 648 709 710 711 712 517 518 519 520; ...
     585 586 587 588 649 650 651 652 713 714 715 716 521 522 523 524; ...
     589 590 591 592 653 654 655 656 717 718 719 720 525 526 527 528; ...
     593 594 595 596 657 658 659 660 721 722 723 724 529 530 531 532; ...
     597 598 599 600 661 662 663 664 725 726 727 728 533 534 535 536; ...
     601 602 603 604 665 666 667 668 729 730 731 732 537 538 539 540; ...
     605 606 607 608 669 670 671 672 733 734 735 736 541 542 543 544; ...
     609 610 611 612 673 674 675 676 737 738 739 740 545 546 547 548; ...
     613 614 615 616 677 678 679 680 741 742 743 744 549 550 551 552; ...
     617 618 619 620 681 682 683 684 745 746 747 748 553 554 555 556; ...
     621 622 623 624 685 686 687 688 749 750 751 752 557 558 559 560; ...
     625 626 627 628 689 690 691 692 753 754 755 756 561 562 563 564; ...
     629 630 631 632 693 694 695 696 757 758 759 760 565 566 567 568; ...
     633 634 635 636 697 698 699 700 761 762 763 764 569 570 571 572; ...
     637 638 639 640 701 702 703 704 765 766 767 768 573 574 575 576];


% Output Channels
ch_idx = daup_to_ch(daup_idx, :);
