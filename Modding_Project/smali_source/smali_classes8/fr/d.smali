.class public Lfr/d;
.super Ljava/lang/Object;
.source "IabUtils.java"


# static fields
.field private static final a:Lio/bidmachine/iab/CacheControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    .line 2
    .line 3
    sput-object v0, Lfr/d;->a:Lio/bidmachine/iab/CacheControl;

    .line 4
    .line 5
    return-void
.end method

.method public static a(Lqm/a;)Lfr/a;
    .locals 3
    .param p0    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqm/a;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    sget-object v1, Lfr/a;->r:Lfr/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v1, Lfr/a;->n:Lfr/a;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v1, Lfr/a;->p:Lfr/a;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sget-object v1, Lfr/a;->q:Lfr/a;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    sget-object v1, Lfr/a;->e:Lfr/a;

    .line 33
    .line 34
    :goto_0
    new-instance v2, Lfr/a;

    .line 35
    .line 36
    invoke-virtual {p0}, Lqm/a;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v2, v1, v0, p0}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v2
.end method

.method public static b(Ljava/lang/Object;)Lio/bidmachine/iab/CacheControl;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lfr/d;->a:Lio/bidmachine/iab/CacheControl;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lio/bidmachine/iab/CacheControl;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Lio/bidmachine/iab/CacheControl;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    instance-of v0, p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :cond_3
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-eqz p0, :cond_6

    .line 33
    .line 34
    sget-object v0, Lfr/d$a;->a:[I

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    aget p0, v0, p0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-eq p0, v0, :cond_5

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    if-eq p0, v0, :cond_4

    .line 47
    .line 48
    sget-object p0, Lfr/d;->a:Lio/bidmachine/iab/CacheControl;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    sget-object p0, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_5
    sget-object p0, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_6
    sget-object p0, Lfr/d;->a:Lio/bidmachine/iab/CacheControl;

    .line 58
    .line 59
    return-object p0
.end method

.method public static c(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/AdExtension$ControlAsset;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 6
    .line 7
    invoke-direct {v1}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->Y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->l0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->O(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Lio/bidmachine/core/g;->m0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->P(Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->S(Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->u0(Ljava/lang/Number;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->U(Ljava/lang/Number;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    int-to-float v2, v2

    .line 80
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->V(Ljava/lang/Float;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lio/bidmachine/core/g;->e0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->W(Ljava/lang/Integer;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lio/bidmachine/core/g;->h0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->r0(Ljava/lang/Integer;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->Z(Ljava/lang/Float;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->a0(Ljava/lang/Boolean;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v2}, Lio/bidmachine/core/g;->m0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->o0(Ljava/lang/Integer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->p0(Ljava/lang/Float;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->q0(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v1, p0}, Lio/bidmachine/iab/utils/IabElementStyle;->s0(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :catch_0
    return-object v0
.end method
