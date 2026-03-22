.class final Landroidx/core/os/BuildCompat$Api30Impl;
.super Ljava/lang/Object;
.source "BuildCompat.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api30Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/os/BuildCompat$Api30Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/os/BuildCompat$Api30Impl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getExtensionVersion(I)I
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
