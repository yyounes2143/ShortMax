.class public final Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cancelAfterCloseMillis:J

.field private final code:I

.field private final reason:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/applovin/shadow/okio/ByteString;J)V
    .locals 0
    .param p2    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lcom/applovin/shadow/okio/ByteString;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getCancelAfterCloseMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReason()Lcom/applovin/shadow/okio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lcom/applovin/shadow/okio/ByteString;

    .line 2
    .line 3
    return-object v0
.end method
