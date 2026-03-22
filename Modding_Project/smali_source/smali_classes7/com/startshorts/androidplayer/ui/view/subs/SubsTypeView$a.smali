.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "SubsTypeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->setSubsSkus(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Z

.field final synthetic i:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->e:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->g:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iput-boolean p8, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->h:Z

    .line 16
    .line 17
    iput p9, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->i:I

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 5
    .line 6
    iget p3, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 7
    .line 8
    if-ne p3, p2, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->e:Ljava/util/List;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    move v4, p2

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->X(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->g:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 32
    .line 33
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->h:Z

    .line 43
    .line 44
    if-nez p1, :cond_8

    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->d:Ljava/lang/String;

    .line 47
    .line 48
    const-string p2, "subscribe"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 57
    .line 58
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 63
    .line 64
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 65
    .line 66
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    invoke-virtual {p2}, Lfk/z;->n()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->y(II)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->i:I

    .line 79
    .line 80
    add-int/lit8 p2, p2, -0x1

    .line 81
    .line 82
    if-ne p1, p2, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 85
    .line 86
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 87
    .line 88
    invoke-virtual {p2}, Lfk/z;->n()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->y(II)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 101
    .line 102
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 103
    .line 104
    invoke-virtual {p2}, Lfk/z;->l()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    const/high16 p3, 0x41e00000    # 28.0f

    .line 109
    .line 110
    invoke-static {p3}, Ljk/g;->a(F)I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->y(II)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 119
    .line 120
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 121
    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 125
    .line 126
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 127
    .line 128
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->y(II)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->i:I

    .line 141
    .line 142
    add-int/lit8 p2, p2, -0x1

    .line 143
    .line 144
    if-ne p1, p2, :cond_7

    .line 145
    .line 146
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 147
    .line 148
    const/high16 p2, 0x41b00000    # 22.0f

    .line 149
    .line 150
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    sget-object p3, Lfk/z;->a:Lfk/z;

    .line 155
    .line 156
    invoke-virtual {p3}, Lfk/z;->m()I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->y(II)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 165
    .line 166
    const/high16 p2, 0x41600000    # 14.0f

    .line 167
    .line 168
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    const/high16 p3, 0x41200000    # 10.0f

    .line 173
    .line 174
    invoke-static {p3}, Ljk/g;->a(F)I

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->y(II)V

    .line 179
    .line 180
    .line 181
    :cond_8
    :goto_0
    return-void
.end method
