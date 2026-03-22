.class public final Lrq/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq/q0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:F

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(FZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lrq/q0;->a:F

    .line 5
    .line 6
    iput-boolean p2, p0, Lrq/q0;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lrq/q0;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    iget v0, p0, Lrq/q0;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrq/q0;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrq/q0;->b:Z

    .line 2
    .line 3
    return v0
.end method
