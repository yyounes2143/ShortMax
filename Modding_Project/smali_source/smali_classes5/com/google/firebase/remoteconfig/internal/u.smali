.class public Lcom/google/firebase/remoteconfig/internal/u;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigValueImpl.java"

# interfaces
.implements Lf9/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/u;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/u;->b:I

    .line 7
    .line 8
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/u;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Value is null, and cannot be converted to the desired type."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/u;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/u;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/u;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method
