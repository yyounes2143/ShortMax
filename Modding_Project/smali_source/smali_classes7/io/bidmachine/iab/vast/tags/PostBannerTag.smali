.class public Lio/bidmachine/iab/vast/tags/PostBannerTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# instance fields
.field private final c:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:F

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 17
    .line 18
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 26
    .line 27
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    .line 34
    .line 35
    iput v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->i:F

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->j:Z

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->k:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->l:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->m:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->n:Z

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method protected B(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Postbanner"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x3

    .line 13
    if-eq v3, v4, :cond_d

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v3, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "CloseTime"

    .line 27
    .line 28
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v3

    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_2
    const-string v4, "Duration"

    .line 55
    .line 56
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_0

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->i:F

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string v4, "ClosableView"

    .line 80
    .line 81
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 88
    .line 89
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string v4, "Countdown"

    .line 94
    .line 95
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 102
    .line 103
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    const-string v4, "LoadingView"

    .line 108
    .line 109
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 116
    .line 117
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    const-string v4, "Progress"

    .line 122
    .line 123
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 130
    .line 131
    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->C(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    const-string v4, "UseNativeClose"

    .line 136
    .line 137
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_8

    .line 142
    .line 143
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->l:Z

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_8
    const-string v4, "IgnoresSafeAreaLayoutGuide"

    .line 152
    .line 153
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->k:Z

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_9
    const-string v4, "ProductLink"

    .line 168
    .line 169
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_a

    .line 174
    .line 175
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->g:Ljava/lang/String;

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_a
    const-string v4, "R1"

    .line 184
    .line 185
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_b

    .line 190
    .line 191
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->m:Z

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_b
    const-string v4, "R2"

    .line 200
    .line 201
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_c

    .line 206
    .line 207
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->F(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->n:Z

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_c
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->I(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :goto_1
    const-string v4, "VastXmlTag"

    .line 221
    .line 222
    invoke-static {v4, v3}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_d
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public Z()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public a0()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public b()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public k0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public p0(I)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    .line 3
    .line 4
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public q0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public u()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    return-object v0
.end method
