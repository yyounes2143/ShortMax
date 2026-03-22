.class public final Lrq/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;FF)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

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
    iput-object p1, p0, Lrq/k;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 10
    .line 11
    iput p2, p0, Lrq/k;->b:F

    .line 12
    .line 13
    iput p3, p0, Lrq/k;->c:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    iget v0, p0, Lrq/k;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/k;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget v0, p0, Lrq/k;->c:F

    .line 2
    .line 3
    return v0
.end method
