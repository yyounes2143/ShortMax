.class public final Lgt/d;
.super Lgt/v0;
.source "EventLoop.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lgt/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgt/d;->g:Ljava/lang/Thread;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected Y()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgt/d;->g:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object v0
.end method
