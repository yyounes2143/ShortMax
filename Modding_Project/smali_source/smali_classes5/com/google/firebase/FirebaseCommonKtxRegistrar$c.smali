.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;
.super Ljava/lang/Object;
.source "Firebase.kt"

# interfaces
.implements Lw7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw7/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/FirebaseCommonKtxRegistrar$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lw7/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->b(Lw7/d;)Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Lw7/d;)Lgt/c0;
    .locals 2

    .line 1
    const-class v0, Lo7/b;

    .line 2
    .line 3
    const-class v1, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "get(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-static {p1}, Lgt/d1;->b(Ljava/util/concurrent/Executor;)Lgt/c0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
