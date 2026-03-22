.class public final Lgc/a$f;
.super Lgc/a;
.source "CommandComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lgc/a$f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgc/a$f;

    .line 2
    .line 3
    invoke-direct {v0}, Lgc/a$f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgc/a$f;->c:Lgc/a$f;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgc/a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
