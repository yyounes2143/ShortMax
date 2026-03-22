.class final Lio/bidmachine/rendering/internal/controller/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhq/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/controller/h;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$c;->a:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lrq/n;)V
    .locals 1
    .param p1    # Lrq/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "brokenCreativeEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$c;->a:Lio/bidmachine/rendering/internal/controller/h;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/controller/h;->m(Lio/bidmachine/rendering/internal/controller/h;Lrq/n;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
