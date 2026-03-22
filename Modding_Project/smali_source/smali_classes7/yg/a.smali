.class public final Lyg/a;
.super Ljava/lang/Object;
.source "LanguageLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLanguageLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageLocalDS.kt\ncom/startshorts/androidplayer/repo/language/LanguageLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1863#2,2:31\n1863#2,2:33\n*S KotlinDebug\n*F\n+ 1 LanguageLocalDS.kt\ncom/startshorts/androidplayer/repo/language/LanguageLocalDS\n*L\n16#1:31,2\n25#1:33,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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
            "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
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
    sget-object v0, Lid/b;->a:Lid/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lid/b;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v3, v4

    .line 72
    :goto_1
    check-cast v3, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 78
    .line 79
    .line 80
    move-object v4, v3

    .line 81
    :cond_3
    sget-object v2, Lid/b;->a:Lid/b;

    .line 82
    .line 83
    const-string v3, ""

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-nez v4, :cond_5

    .line 92
    .line 93
    :cond_4
    move-object v4, v3

    .line 94
    :cond_5
    invoke-virtual {v2, v4, p1}, Lid/b;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/lang/String;

    .line 123
    .line 124
    if-nez v4, :cond_6

    .line 125
    .line 126
    move-object v4, v3

    .line 127
    :cond_6
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->setDescName(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    return-object v0
.end method
