.class public final Landroidx/navigation/NavInflater;
.super Ljava/lang/Object;
.source "NavInflater.java"


# static fields
.field public static final APPLICATION_ID_PLACEHOLDER:Ljava/lang/String; = "${applicationId}"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final TAG_ACTION:Ljava/lang/String; = "action"

.field private static final TAG_ARGUMENT:Ljava/lang/String; = "argument"

.field private static final TAG_DEEP_LINK:Ljava/lang/String; = "deepLink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final sTmpValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNavigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavigatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/NavInflater;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 7
    .line 8
    return-void
.end method

.method private static checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "Type is "

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p3, " but found "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p3, ": "

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object p1, p2

    .line 51
    :goto_1
    return-object p1
.end method

.method private inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;
    .locals 9
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/XmlResourceParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Landroidx/navigation/NavInflater;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v7, 0x1

    add-int/lit8 v8, v1, 0x1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v7, :cond_8

    .line 22
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v8, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    if-le v2, v8, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "argument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/navigation/NavInflater;->inflateArgumentForDestination(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;I)V

    goto :goto_0

    .line 26
    :cond_4
    const-string v2, "deepLink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27
    invoke-direct {p0, p1, v0, p3}, Landroidx/navigation/NavInflater;->inflateDeepLink(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 28
    :cond_5
    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    .line 29
    invoke-direct/range {v1 .. v6}, Landroidx/navigation/NavInflater;->inflateAction(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;I)V

    goto :goto_0

    .line 30
    :cond_6
    const-string v2, "include"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_7

    .line 31
    sget-object v1, Landroidx/navigation/R$styleable;->NavInclude:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 32
    sget v2, Landroidx/navigation/R$styleable;->NavInclude_graph:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 33
    move-object v3, v0

    check-cast v3, Landroidx/navigation/NavGraph;

    invoke-virtual {p0, v2}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 34
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 35
    :cond_7
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    .line 36
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method private inflateAction(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;I)V
    .locals 9
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavDestination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/navigation/common/R$styleable;->NavAction:[I

    .line 2
    .line 3
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Landroidx/navigation/common/R$styleable;->NavAction_android_id:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sget v3, Landroidx/navigation/common/R$styleable;->NavAction_destination:I

    .line 15
    .line 16
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    new-instance v4, Landroidx/navigation/NavAction;

    .line 21
    .line 22
    invoke-direct {v4, v3}, Landroidx/navigation/NavAction;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroidx/navigation/NavOptions$Builder;

    .line 26
    .line 27
    invoke-direct {v3}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget v5, Landroidx/navigation/common/R$styleable;->NavAction_launchSingleTop:I

    .line 31
    .line 32
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v3, v5}, Landroidx/navigation/NavOptions$Builder;->setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;

    .line 37
    .line 38
    .line 39
    sget v5, Landroidx/navigation/common/R$styleable;->NavAction_popUpTo:I

    .line 40
    .line 41
    const/4 v6, -0x1

    .line 42
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    sget v7, Landroidx/navigation/common/R$styleable;->NavAction_popUpToInclusive:I

    .line 47
    .line 48
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v3, v5, v2}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 53
    .line 54
    .line 55
    sget v2, Landroidx/navigation/common/R$styleable;->NavAction_enterAnim:I

    .line 56
    .line 57
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v3, v2}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 62
    .line 63
    .line 64
    sget v2, Landroidx/navigation/common/R$styleable;->NavAction_exitAnim:I

    .line 65
    .line 66
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v3, v2}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 71
    .line 72
    .line 73
    sget v2, Landroidx/navigation/common/R$styleable;->NavAction_popEnterAnim:I

    .line 74
    .line 75
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v3, v2}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 80
    .line 81
    .line 82
    sget v2, Landroidx/navigation/common/R$styleable;->NavAction_popExitAnim:I

    .line 83
    .line 84
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v3, v2}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v4, v2}, Landroidx/navigation/NavAction;->setNavOptions(Landroidx/navigation/NavOptions;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/4 v5, 0x1

    .line 108
    add-int/2addr v3, v5

    .line 109
    :cond_0
    :goto_0
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eq v6, v5, :cond_4

    .line 114
    .line 115
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-ge v7, v3, :cond_1

    .line 120
    .line 121
    const/4 v8, 0x3

    .line 122
    if-eq v6, v8, :cond_4

    .line 123
    .line 124
    :cond_1
    const/4 v8, 0x2

    .line 125
    if-eq v6, v8, :cond_2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    if-le v7, v3, :cond_3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const-string v7, "argument"

    .line 136
    .line 137
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_0

    .line 142
    .line 143
    invoke-direct {p0, p1, v2, p3, p5}, Landroidx/navigation/NavInflater;->inflateArgumentForBundle(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/util/AttributeSet;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_5

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Landroidx/navigation/NavAction;->setDefaultArguments(Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {p2, v1, v4}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method private inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;
    .locals 9
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/navigation/NavArgument$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/navigation/NavArgument$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroidx/navigation/common/R$styleable;->NavArgument_nullable:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/navigation/NavArgument$Builder;->setIsNullable(Z)Landroidx/navigation/NavArgument$Builder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/util/TypedValue;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    new-instance v3, Landroid/util/TypedValue;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget v1, Landroidx/navigation/common/R$styleable;->NavArgument_argType:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {v1, p3}, Landroidx/navigation/NavType;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object p3, v4

    .line 53
    :goto_0
    sget v5, Landroidx/navigation/common/R$styleable;->NavArgument_android_defaultValue:I

    .line 54
    .line 55
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_10

    .line 60
    .line 61
    sget-object v4, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 62
    .line 63
    const-string v5, "\' for "

    .line 64
    .line 65
    const-string/jumbo v6, "unsupported value \'"

    .line 66
    .line 67
    .line 68
    const/16 v7, 0x10

    .line 69
    .line 70
    if-ne p3, v4, :cond_4

    .line 71
    .line 72
    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_2
    iget p1, v3, Landroid/util/TypedValue;->type:I

    .line 83
    .line 84
    if-ne p1, v7, :cond_3

    .line 85
    .line 86
    iget p1, v3, Landroid/util/TypedValue;->data:I

    .line 87
    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 97
    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p3, ". Must be a reference to a resource."

    .line 122
    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_4
    iget v8, v3, Landroid/util/TypedValue;->resourceId:I

    .line 135
    .line 136
    if-eqz v8, :cond_6

    .line 137
    .line 138
    if-nez p3, :cond_5

    .line 139
    .line 140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    move-object p3, v4

    .line 145
    move-object v4, p1

    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 149
    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p3, ". You must use a \""

    .line 174
    .line 175
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string p3, "\" type to reference other resources."

    .line 186
    .line 187
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_6
    sget-object v4, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 199
    .line 200
    if-ne p3, v4, :cond_7

    .line 201
    .line 202
    sget p2, Landroidx/navigation/common/R$styleable;->NavArgument_android_defaultValue:I

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_7
    iget p1, v3, Landroid/util/TypedValue;->type:I

    .line 211
    .line 212
    const/4 v4, 0x3

    .line 213
    if-eq p1, v4, :cond_e

    .line 214
    .line 215
    const/4 v4, 0x4

    .line 216
    const-string v5, "float"

    .line 217
    .line 218
    if-eq p1, v4, :cond_d

    .line 219
    .line 220
    const/4 v4, 0x5

    .line 221
    if-eq p1, v4, :cond_c

    .line 222
    .line 223
    const/16 p2, 0x12

    .line 224
    .line 225
    if-eq p1, p2, :cond_a

    .line 226
    .line 227
    if-lt p1, v7, :cond_9

    .line 228
    .line 229
    const/16 p2, 0x1f

    .line 230
    .line 231
    if-gt p1, p2, :cond_9

    .line 232
    .line 233
    sget-object p1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 234
    .line 235
    if-ne p3, p1, :cond_8

    .line 236
    .line 237
    invoke-static {v3, p3, p1, v1, v5}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    iget p1, v3, Landroid/util/TypedValue;->data:I

    .line 242
    .line 243
    int-to-float p1, p1

    .line 244
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    goto :goto_1

    .line 249
    :cond_8
    sget-object p1, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 250
    .line 251
    const-string p2, "integer"

    .line 252
    .line 253
    invoke-static {v3, p3, p1, v1, p2}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    iget p1, v3, Landroid/util/TypedValue;->data:I

    .line 258
    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    goto :goto_1

    .line 264
    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 265
    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string/jumbo p3, "unsupported argument type "

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget p3, v3, Landroid/util/TypedValue;->type:I

    .line 278
    .line 279
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_a
    sget-object p1, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 291
    .line 292
    const-string p2, "boolean"

    .line 293
    .line 294
    invoke-static {v3, p3, p1, v1, p2}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    iget p1, v3, Landroid/util/TypedValue;->data:I

    .line 299
    .line 300
    if-eqz p1, :cond_b

    .line 301
    .line 302
    const/4 v2, 0x1

    .line 303
    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    goto :goto_1

    .line 308
    :cond_c
    sget-object p1, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 309
    .line 310
    const-string v2, "dimension"

    .line 311
    .line 312
    invoke-static {v3, p3, p1, v1, v2}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 313
    .line 314
    .line 315
    move-result-object p3

    .line 316
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {v3, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    float-to-int p1, p1

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    goto :goto_1

    .line 330
    :cond_d
    sget-object p1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 331
    .line 332
    invoke-static {v3, p3, p1, v1, v5}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    goto :goto_1

    .line 345
    :cond_e
    iget-object p1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 346
    .line 347
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    if-nez p3, :cond_f

    .line 352
    .line 353
    invoke-static {p1}, Landroidx/navigation/NavType;->inferFromValue(Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 354
    .line 355
    .line 356
    move-result-object p3

    .line 357
    :cond_f
    invoke-virtual {p3, p1}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    :cond_10
    :goto_1
    if-eqz v4, :cond_11

    .line 362
    .line 363
    invoke-virtual {v0, v4}, Landroidx/navigation/NavArgument$Builder;->setDefaultValue(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;

    .line 364
    .line 365
    .line 366
    :cond_11
    if-eqz p3, :cond_12

    .line 367
    .line 368
    invoke-virtual {v0, p3}, Landroidx/navigation/NavArgument$Builder;->setType(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;

    .line 369
    .line 370
    .line 371
    :cond_12
    invoke-virtual {v0}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    return-object p1
.end method

.method private inflateArgumentForBundle(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/navigation/common/R$styleable;->NavArgument:[I

    .line 2
    .line 3
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    sget v0, Landroidx/navigation/common/R$styleable;->NavArgument_android_name:I

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p3, p1, p4}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/navigation/NavArgument;->isDefaultValuePresent()Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavArgument;->putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 33
    .line 34
    const-string p2, "Arguments must have a name"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method private inflateArgumentForDestination(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavDestination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/navigation/common/R$styleable;->NavArgument:[I

    .line 2
    .line 3
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    sget v0, Landroidx/navigation/common/R$styleable;->NavArgument_android_name:I

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p3, p1, p4}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, v0, p1}, Landroidx/navigation/NavDestination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 27
    .line 28
    const-string p2, "Arguments must have a name"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method private inflateDeepLink(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavDestination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/navigation/common/R$styleable;->NavDeepLink:[I

    .line 2
    .line 3
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget p3, Landroidx/navigation/common/R$styleable;->NavDeepLink_uri:I

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    sget v0, Landroidx/navigation/common/R$styleable;->NavDeepLink_action:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Landroidx/navigation/common/R$styleable;->NavDeepLink_mimeType:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 45
    .line 46
    const-string p2, "Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    new-instance v2, Landroidx/navigation/NavDeepLink$Builder;

    .line 53
    .line 54
    invoke-direct {v2}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "${applicationId}"

    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    iget-object v4, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {v2, p3}, Landroidx/navigation/NavDeepLink$Builder;->setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-nez p3, :cond_3

    .line 79
    .line 80
    iget-object p3, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {v0, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {v2, p3}, Landroidx/navigation/NavDeepLink$Builder;->setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 91
    .line 92
    .line 93
    :cond_3
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iget-object p3, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {v1, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v2, p3}, Landroidx/navigation/NavDeepLink$Builder;->setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {v2}, Landroidx/navigation/NavDeepLink$Builder;->build()Landroidx/navigation/NavDeepLink;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p2, p3}, Landroidx/navigation/NavDestination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public inflate(I)Landroidx/navigation/NavGraph;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/NavigationRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_2

    .line 5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 7
    instance-of v4, v2, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_1

    .line 8
    check-cast v2, Landroidx/navigation/NavGraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 10
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root element <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> did not inflate into a NavGraph"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception inflating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 16
    throw p1
.end method
