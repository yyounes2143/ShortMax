.class public final Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;
.super Ljava/lang/Object;
.source "ClipboardParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clipUUid"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo v0, "shortPlayId"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public final b()V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    const-string v4, "organic"

    .line 22
    .line 23
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    :cond_1
    :goto_0
    sget-object v2, Lud/b;->a:Lud/b;

    .line 30
    .line 31
    invoke-virtual {v2}, Lud/b;->W0()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 38
    .line 39
    const-string v4, "CampaignNewTag"

    .line 40
    .line 41
    const-string/jumbo v5, "tryReportCampaignInfoAgain"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lud/b;->j4(Z)V

    .line 48
    .line 49
    .line 50
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 51
    .line 52
    const/4 v11, 0x6

    .line 53
    const/4 v12, 0x0

    .line 54
    const-string/jumbo v7, "web_parse_cb_result_report_again"

    .line 55
    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const-wide/16 v9, 0x0

    .line 59
    .line 60
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->J(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method
