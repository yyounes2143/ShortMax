.class public Lhb/x0;
.super Ljava/lang/Object;
.source ""


# static fields
.field static b:Lhb/x0;


# instance fields
.field a:Lhb/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhb/x0;

    .line 2
    .line 3
    invoke-direct {v0}, Lhb/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhb/x0;->b:Lhb/x0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lhb/x0;->a:Lhb/l1;

    .line 6
    .line 7
    return-void
.end method

.method public static d()Lhb/x0;
    .locals 1

    .line 1
    sget-object v0, Lhb/x0;->b:Lhb/x0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lhb/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/x0;->a:Lhb/l1;

    .line 2
    .line 3
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/x0;->a:Lhb/l1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public c()Lhb/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/x0;->a:Lhb/l1;

    .line 2
    .line 3
    return-object v0
.end method
