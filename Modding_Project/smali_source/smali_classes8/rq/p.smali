.class public final Lrq/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrq/g;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lrq/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrq/o;)V
    .locals 1
    .param p1    # Lrq/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "color"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrq/p;->a:Lrq/o;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lrq/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/p;->a:Lrq/o;

    .line 2
    .line 3
    return-object v0
.end method
