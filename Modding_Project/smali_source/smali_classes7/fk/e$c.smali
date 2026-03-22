.class public final Lfk/e$c;
.super Ljava/lang/Object;
.source "BillingStateHandler.kt"

# interfaces
.implements Lgi/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfk/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lfk/e;


# direct methods
.method constructor <init>(Lfk/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfk/e$c;->a:Lfk/e;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lfk/e$c;->a:Lfk/e;

    .line 2
    .line 3
    const-string v1, "retry_pop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lfk/e;->b(Lfk/e;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
