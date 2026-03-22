.class Landroidx/navigation/NavDeepLink$ParamQuery;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParamQuery"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParamRegex:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method addArgumentName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getArgumentName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method getParamRegex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mParamRegex:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method setParamRegex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mParamRegex:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLink$ParamQuery;->mArguments:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
