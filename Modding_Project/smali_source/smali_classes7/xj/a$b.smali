.class final Lxj/a$b;
.super Lxj/a;
.source "AnimatorCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:F

.field private final c:Lxj/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFLxj/a$a;)V
    .locals 0
    .param p3    # Lxj/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "mListener"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lxj/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lxj/a$b;->b:F

    .line 10
    .line 11
    iput-object p3, p0, Lxj/a$b;->c:Lxj/a$a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxj/a$b;->c:Lxj/a$a;

    .line 2
    .line 3
    iget v1, p0, Lxj/a$b;->b:F

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lxj/a$a;->a(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
