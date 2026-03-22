.class public final Lbc/b;
.super Ljava/lang/Object;
.source "ContextHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbc/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lbc/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbc/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lbc/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lbc/b;->a:Lbc/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lbc/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lbc/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
