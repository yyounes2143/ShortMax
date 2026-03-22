.class public final Landroidx/webkit/RestrictionAllowlist;
.super Ljava/lang/Object;
.source "RestrictionAllowlist.java"


# annotations
.annotation build Landroidx/webkit/WebViewBuilder$Experimental;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/RestrictionAllowlist$ConfigTask;,
        Landroidx/webkit/RestrictionAllowlist$Builder;
    }
.end annotation


# instance fields
.field private final mConfigTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist$ConfigTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist$ConfigTask;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/webkit/RestrictionAllowlist;->mConfigTasks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroidx/webkit/RestrictionAllowlist$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/webkit/RestrictionAllowlist;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist;->mConfigTasks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/webkit/RestrictionAllowlist$ConfigTask;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroidx/webkit/RestrictionAllowlist$ConfigTask;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
