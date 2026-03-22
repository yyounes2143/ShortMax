.class public final Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;
.super Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;
.source "ClipboardParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;->d:Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
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
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;->d:Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;->a(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public c(ZLrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-boolean p1, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->i:Z

    .line 54
    .line 55
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->h:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;

    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 67
    .line 68
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 69
    .line 70
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->h:Ljava/lang/Object;

    .line 71
    .line 72
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->i:Z

    .line 73
    .line 74
    iput v4, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->l:I

    .line 75
    .line 76
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->l(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-ne p2, v1, :cond_4

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_4
    move-object v2, p0

    .line 84
    :goto_1
    const/4 p2, 0x0

    .line 85
    iput-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->h:Ljava/lang/Object;

    .line 86
    .line 87
    iput v3, v0, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$parse$1;->l:I

    .line 88
    .line 89
    invoke-super {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->c(ZLrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-ne p2, v1, :cond_5

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_5
    :goto_2
    return-object p2
.end method

.method protected k(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p2, "info"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class p2, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->setCampaign(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, p2

    .line 30
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "shortPlayId:"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string v0, ""

    .line 59
    .line 60
    invoke-virtual {p0, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "ClipboardParser parseInternal campaignInfo:"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "CampaignNewTag"

    .line 83
    .line 84
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    sget-object p2, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;->d:Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;->b()V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ClipboardParser"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    return-object v0
.end method
