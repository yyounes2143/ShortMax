.class Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;
.super Ljava/lang/Object;
.source "CognitoCachingCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/IdentityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->v()Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Identity id is changed"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->w(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->a:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->b()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
