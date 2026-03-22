.class public final enum Lio/bidmachine/AdsFormat;
.super Ljava/lang/Enum;
.source "AdsFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdsFormat$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsFormat;

.field public static final enum Banner:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_300x250:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_320x50:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_728x90:Lio/bidmachine/AdsFormat;

.field public static final enum Interstitial:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialStatic:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialVideo:Lio/bidmachine/AdsFormat;

.field public static final enum Native:Lio/bidmachine/AdsFormat;

.field public static final enum Rewarded:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedStatic:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedVideo:Lio/bidmachine/AdsFormat;


# instance fields
.field private final matcher:Lio/bidmachine/AdsFormat$l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final parent:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final remoteName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lio/bidmachine/AdsFormat;
    .locals 11

    .line 1
    sget-object v0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 8
    .line 9
    sget-object v4, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 10
    .line 11
    sget-object v5, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    .line 12
    .line 13
    sget-object v6, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    .line 14
    .line 15
    sget-object v7, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    .line 16
    .line 17
    sget-object v8, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    .line 18
    .line 19
    sget-object v9, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    .line 20
    .line 21
    sget-object v10, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Lio/bidmachine/AdsFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    new-instance v5, Lio/bidmachine/AdsFormat$c;

    .line 4
    .line 5
    sget-object v7, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 6
    .line 7
    invoke-direct {v5, v7}, Lio/bidmachine/AdsFormat$c;-><init>(Lio/bidmachine/AdsType;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "Banner"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "banner"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v0, v6

    .line 17
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 18
    .line 19
    .line 20
    sput-object v6, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    .line 21
    .line 22
    new-instance v8, Lio/bidmachine/AdsFormat;

    .line 23
    .line 24
    new-instance v5, Lio/bidmachine/AdsFormat$d;

    .line 25
    .line 26
    invoke-direct {v5, v7}, Lio/bidmachine/AdsFormat$d;-><init>(Lio/bidmachine/AdsType;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "Banner_320x50"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const-string v3, "banner_320x50"

    .line 33
    .line 34
    move-object v0, v8

    .line 35
    move-object v4, v6

    .line 36
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 37
    .line 38
    .line 39
    sput-object v8, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 40
    .line 41
    new-instance v8, Lio/bidmachine/AdsFormat;

    .line 42
    .line 43
    new-instance v5, Lio/bidmachine/AdsFormat$e;

    .line 44
    .line 45
    invoke-direct {v5, v7}, Lio/bidmachine/AdsFormat$e;-><init>(Lio/bidmachine/AdsType;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "Banner_300x250"

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const-string v3, "banner_300x250"

    .line 52
    .line 53
    move-object v0, v8

    .line 54
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 55
    .line 56
    .line 57
    sput-object v8, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 58
    .line 59
    new-instance v8, Lio/bidmachine/AdsFormat;

    .line 60
    .line 61
    new-instance v5, Lio/bidmachine/AdsFormat$f;

    .line 62
    .line 63
    invoke-direct {v5, v7}, Lio/bidmachine/AdsFormat$f;-><init>(Lio/bidmachine/AdsType;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "Banner_728x90"

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    const-string v3, "banner_728x90"

    .line 70
    .line 71
    move-object v0, v8

    .line 72
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 73
    .line 74
    .line 75
    sput-object v8, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 76
    .line 77
    new-instance v0, Lio/bidmachine/AdsFormat;

    .line 78
    .line 79
    new-instance v14, Lio/bidmachine/AdsFormat$g;

    .line 80
    .line 81
    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 82
    .line 83
    invoke-direct {v14, v1}, Lio/bidmachine/AdsFormat$g;-><init>(Lio/bidmachine/AdsType;)V

    .line 84
    .line 85
    .line 86
    const-string v10, "Interstitial"

    .line 87
    .line 88
    const/4 v11, 0x4

    .line 89
    const-string v12, "interstitial"

    .line 90
    .line 91
    const/4 v13, 0x0

    .line 92
    move-object v9, v0

    .line 93
    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 97
    .line 98
    new-instance v2, Lio/bidmachine/AdsFormat;

    .line 99
    .line 100
    new-instance v14, Lio/bidmachine/AdsFormat$h;

    .line 101
    .line 102
    invoke-direct {v14, v1}, Lio/bidmachine/AdsFormat$h;-><init>(Lio/bidmachine/AdsType;)V

    .line 103
    .line 104
    .line 105
    const-string v10, "InterstitialVideo"

    .line 106
    .line 107
    const/4 v11, 0x5

    .line 108
    const-string v12, "interstitial_video"

    .line 109
    .line 110
    move-object v9, v2

    .line 111
    move-object v13, v0

    .line 112
    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 113
    .line 114
    .line 115
    sput-object v2, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    .line 116
    .line 117
    new-instance v2, Lio/bidmachine/AdsFormat;

    .line 118
    .line 119
    new-instance v14, Lio/bidmachine/AdsFormat$i;

    .line 120
    .line 121
    invoke-direct {v14, v1}, Lio/bidmachine/AdsFormat$i;-><init>(Lio/bidmachine/AdsType;)V

    .line 122
    .line 123
    .line 124
    const-string v10, "InterstitialStatic"

    .line 125
    .line 126
    const/4 v11, 0x6

    .line 127
    const-string v12, "interstitial_static"

    .line 128
    .line 129
    move-object v9, v2

    .line 130
    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 131
    .line 132
    .line 133
    sput-object v2, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    .line 134
    .line 135
    new-instance v0, Lio/bidmachine/AdsFormat;

    .line 136
    .line 137
    new-instance v8, Lio/bidmachine/AdsFormat$j;

    .line 138
    .line 139
    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 140
    .line 141
    invoke-direct {v8, v1}, Lio/bidmachine/AdsFormat$j;-><init>(Lio/bidmachine/AdsType;)V

    .line 142
    .line 143
    .line 144
    const-string v4, "Rewarded"

    .line 145
    .line 146
    const/4 v5, 0x7

    .line 147
    const-string v6, "rewarded"

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    move-object v3, v0

    .line 151
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 152
    .line 153
    .line 154
    sput-object v0, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    .line 155
    .line 156
    new-instance v2, Lio/bidmachine/AdsFormat;

    .line 157
    .line 158
    new-instance v8, Lio/bidmachine/AdsFormat$k;

    .line 159
    .line 160
    invoke-direct {v8, v1}, Lio/bidmachine/AdsFormat$k;-><init>(Lio/bidmachine/AdsType;)V

    .line 161
    .line 162
    .line 163
    const-string v4, "RewardedVideo"

    .line 164
    .line 165
    const/16 v5, 0x8

    .line 166
    .line 167
    const-string v6, "rewarded_video"

    .line 168
    .line 169
    move-object v3, v2

    .line 170
    move-object v7, v0

    .line 171
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 172
    .line 173
    .line 174
    sput-object v2, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    .line 175
    .line 176
    new-instance v2, Lio/bidmachine/AdsFormat;

    .line 177
    .line 178
    new-instance v8, Lio/bidmachine/AdsFormat$a;

    .line 179
    .line 180
    invoke-direct {v8, v1}, Lio/bidmachine/AdsFormat$a;-><init>(Lio/bidmachine/AdsType;)V

    .line 181
    .line 182
    .line 183
    const-string v4, "RewardedStatic"

    .line 184
    .line 185
    const/16 v5, 0x9

    .line 186
    .line 187
    const-string v6, "rewarded_static"

    .line 188
    .line 189
    move-object v3, v2

    .line 190
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 191
    .line 192
    .line 193
    sput-object v2, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    .line 194
    .line 195
    new-instance v0, Lio/bidmachine/AdsFormat;

    .line 196
    .line 197
    new-instance v14, Lio/bidmachine/AdsFormat$b;

    .line 198
    .line 199
    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 200
    .line 201
    invoke-direct {v14, v1}, Lio/bidmachine/AdsFormat$b;-><init>(Lio/bidmachine/AdsType;)V

    .line 202
    .line 203
    .line 204
    const-string v10, "Native"

    .line 205
    .line 206
    const/16 v11, 0xa

    .line 207
    .line 208
    const-string v12, "native"

    .line 209
    .line 210
    const/4 v13, 0x0

    .line 211
    move-object v9, v0

    .line 212
    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    .line 216
    .line 217
    invoke-static {}, Lio/bidmachine/AdsFormat;->$values()[Lio/bidmachine/AdsFormat;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sput-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    .line 222
    .line 223
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;Lio/bidmachine/AdsFormat$l;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/AdsFormat$l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lio/bidmachine/AdsFormat;->parent:Lio/bidmachine/AdsFormat;

    .line 7
    .line 8
    iput-object p5, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$l;

    .line 9
    .line 10
    return-void
.end method

.method public static byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    iget-object v4, v3, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/AdsFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsFormat;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/AdsFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/AdsFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getAdsType()Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$l;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/AdsFormat$l;->a(Lio/bidmachine/AdsFormat$l;)Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getParent()Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->parent:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method isMatch(Lio/bidmachine/AdsType;Lxq/d;Lio/bidmachine/AdContentType;)Z
    .locals 1
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lxq/d;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$l;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/AdsFormat$l;->b(Lio/bidmachine/AdsType;Lxq/d;Lio/bidmachine/AdContentType;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
