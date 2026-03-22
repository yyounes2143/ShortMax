.class public final Lrq/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lrq/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:J


# direct methods
.method public constructor <init>(ZLrq/k;J)V
    .locals 1
    .param p2    # Lrq/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "algorithmParams"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lrq/l;->a:Z

    .line 10
    .line 11
    iput-object p2, p0, Lrq/l;->b:Lrq/k;

    .line 12
    .line 13
    iput-wide p3, p0, Lrq/l;->c:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lrq/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/l;->b:Lrq/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrq/l;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrq/l;->a:Z

    .line 2
    .line 3
    return v0
.end method
