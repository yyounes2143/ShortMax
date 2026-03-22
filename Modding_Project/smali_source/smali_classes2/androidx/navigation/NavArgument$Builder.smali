.class public final Landroidx/navigation/NavArgument$Builder;
.super Ljava/lang/Object;
.source "NavArgument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDefaultValuePresent:Z

.field private mIsNullable:Z

.field private mType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/navigation/NavArgument$Builder;->mIsNullable:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/navigation/NavArgument$Builder;->mDefaultValuePresent:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/NavArgument;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->mType:Landroidx/navigation/NavType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->mDefaultValue:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/navigation/NavType;->inferFromValueType(Ljava/lang/Object;)Landroidx/navigation/NavType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/navigation/NavArgument$Builder;->mType:Landroidx/navigation/NavType;

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/navigation/NavArgument;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/navigation/NavArgument$Builder;->mType:Landroidx/navigation/NavType;

    .line 16
    .line 17
    iget-boolean v2, p0, Landroidx/navigation/NavArgument$Builder;->mIsNullable:Z

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/navigation/NavArgument$Builder;->mDefaultValue:Ljava/lang/Object;

    .line 20
    .line 21
    iget-boolean v4, p0, Landroidx/navigation/NavArgument$Builder;->mDefaultValuePresent:Z

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/navigation/NavArgument;-><init>(Landroidx/navigation/NavType;ZLjava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavArgument$Builder;->mDefaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/navigation/NavArgument$Builder;->mDefaultValuePresent:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setIsNullable(Z)Landroidx/navigation/NavArgument$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavArgument$Builder;->mIsNullable:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;
    .locals 0
    .param p1    # Landroidx/navigation/NavType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavType<",
            "*>;)",
            "Landroidx/navigation/NavArgument$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavArgument$Builder;->mType:Landroidx/navigation/NavType;

    .line 2
    .line 3
    return-object p0
.end method
