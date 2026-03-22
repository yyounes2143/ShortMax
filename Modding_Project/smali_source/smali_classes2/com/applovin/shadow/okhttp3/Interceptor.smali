.class public interface abstract Lcom/applovin/shadow/okhttp3/Interceptor;
.super Ljava/lang/Object;
.source "Interceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/Interceptor$Chain;,
        Lcom/applovin/shadow/okhttp3/Interceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/Interceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/Interceptor$Companion;->$$INSTANCE:Lcom/applovin/shadow/okhttp3/Interceptor$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/applovin/shadow/okhttp3/Interceptor;->Companion:Lcom/applovin/shadow/okhttp3/Interceptor$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract intercept(Lcom/applovin/shadow/okhttp3/Interceptor$Chain;)Lcom/applovin/shadow/okhttp3/Response;
    .param p1    # Lcom/applovin/shadow/okhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
