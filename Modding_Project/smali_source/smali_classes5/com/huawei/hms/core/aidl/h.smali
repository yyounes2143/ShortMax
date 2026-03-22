.class public Lcom/huawei/hms/core/aidl/h;
.super Ljava/lang/Object;
.source "RequestHeader.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/e;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field private c:I
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwa/a;
    .end annotation
.end field

.field private f:I
    .annotation runtime Lwa/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/h;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/huawei/hms/core/aidl/h;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/huawei/hms/core/aidl/h;->c:I

    .line 6
    iput-object p4, p0, Lcom/huawei/hms/core/aidl/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/core/aidl/h;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/h;->e:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/h;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/core/aidl/h;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/h;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
