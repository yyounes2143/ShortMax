.class final Lzo/e$c;
.super Lyo/p;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzo/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private g:Lfn/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfn/e$a<",
            "Lzo/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfn/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfn/e$a<",
            "Lzo/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lyo/p;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzo/e$c;->g:Lfn/e$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzo/e$c;->g:Lfn/e$a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lfn/e$a;->a(Lfn/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
