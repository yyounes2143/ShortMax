.class public final Lig/a;
.super Ljava/lang/Object;
.source "SubsLocalDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/subs/SubsLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1863#2,2:130\n*S KotlinDebug\n*F\n+ 1 SubsLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/subs/SubsLocalDS\n*L\n34#1:130,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lig/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lig/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lig/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lig/a;->a:Lig/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "UTC+0"

    .line 13
    .line 14
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    check-cast p2, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-string v4, "getString(...)"

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;

    .line 56
    .line 57
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_5:I

    .line 58
    .line 59
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sget v5, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_5_desc:I

    .line 64
    .line 65
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    new-instance v3, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;

    .line 80
    .line 81
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_1:I

    .line 82
    .line 83
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget v6, Lcom/startshorts/androidplayer/R$string;->common_coins:I

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCoins()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v5, v6}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v3, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;

    .line 115
    .line 116
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_2:I

    .line 117
    .line 118
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    sget v6, Lcom/startshorts/androidplayer/R$string;->common_bonus:I

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getBonus()Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_2

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    const/4 v1, 0x0

    .line 136
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v3, v5, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :goto_2
    sget-object v1, Luh/i0;->a:Luh/i0;

    .line 158
    .line 159
    invoke-virtual {v1}, Luh/i0;->b()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_3

    .line 164
    .line 165
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;

    .line 166
    .line 167
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_6:I

    .line 168
    .line 169
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    sget v5, Lcom/startshorts/androidplayer/R$string;->offline_download:I

    .line 174
    .line 175
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_3
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;

    .line 189
    .line 190
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_4:I

    .line 191
    .line 192
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    sget v5, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_4_desc:I

    .line 197
    .line 198
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v1, v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;

    .line 212
    .line 213
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_3:I

    .line 214
    .line 215
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    sget v5, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_3_desc:I

    .line 220
    .line 221
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v1, v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_4
    return-object v0

    .line 240
    :cond_5
    :goto_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    return-object p1
.end method

.method public final c(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;

    .line 12
    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_new_5:I

    .line 14
    .line 15
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget v3, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_new_5_title:I

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "getString(...)"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget v5, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_new_5_desc:I

    .line 31
    .line 32
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2, v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;

    .line 46
    .line 47
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_new_4:I

    .line 48
    .line 49
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget v3, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_4_desc:I

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget v5, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_new_4_desc:I

    .line 63
    .line 64
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, v3, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;

    .line 78
    .line 79
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_subscription_privilege_new_3:I

    .line 80
    .line 81
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget v3, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_3_desc:I

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget v5, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_new_3_desc:I

    .line 95
    .line 96
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v2, v3, p1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public final d()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lig/a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lud/b;->a:Lud/b;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lud/b;->Q1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method
