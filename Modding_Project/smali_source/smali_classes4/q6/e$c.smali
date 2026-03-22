.class final Lq6/e$c;
.super Lp6/n;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private f:Lr5/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr5/f$a<",
            "Lq6/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr5/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr5/f$a<",
            "Lq6/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp6/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq6/e$c;->f:Lr5/f$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/e$c;->f:Lr5/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lr5/f$a;->a(Lr5/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
