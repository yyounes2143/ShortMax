.class public final Lf5/c;
.super Ljava/lang/Object;
.source "LogSourceMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/c$a;
    }
.end annotation


# static fields
.field private static final c:Lf5/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf5/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf5/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lf5/c$a;->a()Lf5/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lf5/c;->c:Lf5/c;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lf5/c;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static c()Lf5/c$a;
    .locals 1

    .line 1
    new-instance v0, Lf5/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf5/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/c;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
