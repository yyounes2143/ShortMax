.class public Lab/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lab/d;

.field private final b:Ljava/lang/String;

.field private final c:Lab/c;

.field private final d:I

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private final h:Lya/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILab/c;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lya/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lab/a;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lab/a;->c:Lab/c;

    .line 7
    .line 8
    iput p2, p0, Lab/a;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Lab/a;->e:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lab/a;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lab/a;->g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 15
    .line 16
    iput-object p7, p0, Lab/a;->h:Lya/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/a;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lab/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/a;->c:Lab/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lab/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lya/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/a;->h:Lya/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/util/concurrent/Callable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lab/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lab/f;

    .line 2
    .line 3
    iget-object v1, p0, Lab/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lab/a;->d:I

    .line 6
    .line 7
    iget-object v3, p0, Lab/a;->c:Lab/c;

    .line 8
    .line 9
    iget-object v4, p0, Lab/a;->e:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, p0, Lab/a;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lab/a;->g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 14
    .line 15
    iget-object v7, p0, Lab/a;->h:Lya/c;

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lab/f;-><init>(Ljava/lang/String;ILab/c;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lya/c;)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method
