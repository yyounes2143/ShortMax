.class public abstract Lcom/amazonaws/services/s3/internal/SSEResultBase;
.super Ljava/lang/Object;
.source "SSEResultBase.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


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
.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
