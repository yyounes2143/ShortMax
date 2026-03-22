.class public final Landroidx/webkit/RestrictionAllowlist$Builder;
.super Ljava/lang/Object;
.source "RestrictionAllowlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/RestrictionAllowlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

.field private final mOriginPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mConfigTasks:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mOriginPatterns:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/RestrictionAllowlist$Builder;->lambda$addJavaScriptInterface$0(Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$addJavaScriptInterface$0(Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mOriginPatterns:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2, v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)Landroidx/webkit/RestrictionAllowlist$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mConfigTasks:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Landroidx/webkit/a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Landroidx/webkit/a;-><init>(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public build()Landroidx/webkit/RestrictionAllowlist;
    .locals 3

    .line 1
    new-instance v0, Landroidx/webkit/RestrictionAllowlist;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mConfigTasks:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/webkit/RestrictionAllowlist;-><init>(Ljava/util/List;Landroidx/webkit/RestrictionAllowlist$1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
