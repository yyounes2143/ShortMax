.class Lcom/facebook/datasource/AbstractDataSource$b;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/AbstractDataSource;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/d;

.field final synthetic b:Lcom/facebook/datasource/AbstractDataSource;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/AbstractDataSource;Lcom/facebook/datasource/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource$b;->b:Lcom/facebook/datasource/AbstractDataSource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/datasource/AbstractDataSource$b;->a:Lcom/facebook/datasource/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$b;->a:Lcom/facebook/datasource/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$b;->b:Lcom/facebook/datasource/AbstractDataSource;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/facebook/datasource/d;->b(Lcom/facebook/datasource/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
