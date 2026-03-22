.class public final Lad-manager/c/i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic d:Lda/f;


# direct methods
.method public constructor <init>(Lda/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/c/i;->d:Lda/f;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ld/a;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/c/i;->d:Lda/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ld/a;-><init>(Lda/f;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
