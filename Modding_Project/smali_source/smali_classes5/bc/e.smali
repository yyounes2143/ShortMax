.class public final Lbc/e;
.super Ljava/lang/Object;
.source "LogUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbc/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lbc/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Lbc/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbc/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lbc/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lbc/e;->a:Lbc/e$a;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lbc/e;->b:Z

    .line 11
    .line 12
    new-instance v0, Lbc/d$b;

    .line 13
    .line 14
    invoke-direct {v0}, Lbc/d$b;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lbc/e;->b:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lbc/d$b;->a(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lbc/e;->c:Lbc/d;

    .line 23
    .line 24
    return-void
.end method

.method public static final synthetic a()Lbc/d;
    .locals 1

    .line 1
    sget-object v0, Lbc/e;->c:Lbc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lbc/d;)V
    .locals 0

    .line 1
    sput-object p0, Lbc/e;->c:Lbc/d;

    .line 2
    .line 3
    return-void
.end method
