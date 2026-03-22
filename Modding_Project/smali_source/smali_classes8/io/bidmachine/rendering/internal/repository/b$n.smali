.class public final Lio/bidmachine/rendering/internal/repository/b$n;
.super Lio/bidmachine/rendering/internal/repository/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/b;->q(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$f;Llq/a$a;Lrq/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/rendering/internal/repository/b$b<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lrq/t;


# direct methods
.method constructor <init>(Llq/a$a;Lrq/t;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llq/a$a<",
            "TT;>;",
            "Lrq/t;",
            "Lgt/g0;",
            "Lio/bidmachine/rendering/internal/h;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/b$n;->d:Lrq/t;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3, p4}, Lio/bidmachine/rendering/internal/repository/b$b;-><init>(Llq/a$a;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lrq/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b$n;->d:Lrq/t;

    .line 2
    .line 3
    return-object v0
.end method
