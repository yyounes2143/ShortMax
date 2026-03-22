.class Lab/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/g;->f(Lcb/c;Lxa/b;Ljava/lang/String;Lya/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcb/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lya/c;

.field final synthetic d:I

.field final synthetic e:Lxa/b;

.field final synthetic f:Lab/g;


# direct methods
.method constructor <init>(Lab/g;Lcb/c;Ljava/lang/String;Lya/c;ILxa/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/g$b;->f:Lab/g;

    .line 2
    .line 3
    iput-object p2, p0, Lab/g$b;->a:Lcb/c;

    .line 4
    .line 5
    iput-object p3, p0, Lab/g$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lab/g$b;->c:Lya/c;

    .line 8
    .line 9
    iput p5, p0, Lab/g$b;->d:I

    .line 10
    .line 11
    iput-object p6, p0, Lab/g$b;->e:Lxa/b;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lab/g$b;->f:Lab/g;

    .line 2
    .line 3
    iget-object v1, p0, Lab/g$b;->a:Lcb/c;

    .line 4
    .line 5
    iget-object v2, p0, Lab/g$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lab/g$b;->c:Lya/c;

    .line 8
    .line 9
    iget v4, p0, Lab/g$b;->d:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lab/g;->a(Lcb/c;Ljava/lang/String;Lya/c;I)Lab/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lab/g$b;->e:Lxa/b;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lab/g;->e(Lab/g;Lab/d;Lxa/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
