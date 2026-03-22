.class public final Lrq/q0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrq/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:F

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    .line 6
    iput v0, p0, Lrq/q0$a;->a:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lrq/q0;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lrq/q0;

    .line 2
    .line 3
    iget v1, p0, Lrq/q0$a;->a:F

    .line 4
    .line 5
    iget-boolean v2, p0, Lrq/q0$a;->b:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lrq/q0$a;->c:Z

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lrq/q0;-><init>(FZZ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final b(Z)Lrq/q0$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lrq/q0$a;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Z)Lrq/q0$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lrq/q0$a;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(F)Lrq/q0$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lrq/q0$a;->a:F

    .line 2
    .line 3
    return-object p0
.end method
