.class public final Lf5/a;
.super Ljava/lang/Object;
.source "ClientMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/a$a;
    }
.end annotation


# static fields
.field private static final e:Lf5/a;


# instance fields
.field private final a:Lf5/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf5/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lf5/b;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf5/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf5/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lf5/a$a;->b()Lf5/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lf5/a;->e:Lf5/a;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Lf5/e;Ljava/util/List;Lf5/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/e;",
            "Ljava/util/List<",
            "Lf5/c;",
            ">;",
            "Lf5/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/a;->a:Lf5/e;

    .line 5
    .line 6
    iput-object p2, p0, Lf5/a;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lf5/a;->c:Lf5/b;

    .line 9
    .line 10
    iput-object p4, p0, Lf5/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static e()Lf5/a$a;
    .locals 1

    .line 1
    new-instance v0, Lf5/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf5/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x4
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lf5/b;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x3
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/a;->c:Lf5/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf5/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/a;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lf5/e;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/a;->a:Lf5/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()[B
    .locals 1

    .line 1
    invoke-static {p0}, Lc5/m;->a(Ljava/lang/Object;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
