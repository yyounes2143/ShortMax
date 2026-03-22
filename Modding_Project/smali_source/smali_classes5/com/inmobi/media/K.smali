.class public final Lcom/inmobi/media/K;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field public final b:S


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V
    .locals 1

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/K;->a:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 10
    .line 11
    iput-short p2, p0, Lcom/inmobi/media/K;->b:S

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/K;->a:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
