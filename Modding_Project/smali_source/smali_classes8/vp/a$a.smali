.class final Lvp/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/view/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lvp/a;


# direct methods
.method public constructor <init>(Lvp/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lvp/a$a;->a:Lvp/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvp/a$a;->a:Lvp/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltp/b0;->r()Ljq/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljq/b;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
