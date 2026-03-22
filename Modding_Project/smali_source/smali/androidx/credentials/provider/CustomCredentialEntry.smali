.class public final Landroidx/credentials/provider/CustomCredentialEntry;
.super Landroidx/credentials/provider/CredentialEntry;
.source "CustomCredentialEntry.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;,
        Landroidx/credentials/provider/CustomCredentialEntry$Builder;,
        Landroidx/credentials/provider/CustomCredentialEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n1#2:459\n*E\n"
    }
.end annotation


# static fields
.field private static final AUTO_SELECT_FALSE_STRING:Ljava/lang/String; = "false"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AUTO_SELECT_TRUE_STRING:Ljava/lang/String; = "true"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REVISION_ID:I = 0x1

.field private static final SLICE_HINT_AUTO_ALLOWED:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_AUTO_SELECT_FROM_OPTION:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_DEFAULT_ICON_RES_ID:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_ICON:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_LAST_USED_TIME_MILLIS:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_OPTION_ID:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_PENDING_INTENT:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_SUBTITLE:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_TITLE:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SLICE_HINT_TYPE_DISPLAY_NAME:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CredentialEntry"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final autoSelectAllowedFromOption:Z

.field private final icon:Landroid/graphics/drawable/Icon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAutoSelectAllowed:Z

.field private final isDefaultIcon:Z

.field private final lastUsedTime:Ljava/time/Instant;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subtitle:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeDisplayName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/provider/CustomCredentialEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/provider/CustomCredentialEntry;->Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/credentials/provider/BeginGetCredentialOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/drawable/Icon;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginGetCredentialOption"

    move-object/from16 v10, p4

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p4 .. p4}, Landroidx/credentials/provider/BeginGetCredentialOption;->getType()Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0x600

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v5, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 19
    invoke-direct/range {v1 .. v14}, Landroidx/credentials/provider/CustomCredentialEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 16
    sget v1, Landroidx/credentials/R$drawable;->ic_other_sign_in:I

    move-object v2, p1

    invoke-static {p1, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v3, "createWithResource(conte\u2026rawable.ic_other_sign_in)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object v2, p1

    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v12, v0

    goto :goto_4

    :cond_4
    move/from16 v12, p9

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 17
    invoke-direct/range {v3 .. v12}, Landroidx/credentials/provider/CustomCredentialEntry;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/drawable/Icon;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/credentials/provider/BeginGetCredentialOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginGetCredentialOption"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p9}, Landroidx/credentials/provider/CredentialEntry;-><init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;)V

    .line 3
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry;->type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/credentials/provider/CustomCredentialEntry;->title:Ljava/lang/CharSequence;

    .line 5
    iput-object p3, p0, Landroidx/credentials/provider/CustomCredentialEntry;->pendingIntent:Landroid/app/PendingIntent;

    .line 6
    iput-boolean p4, p0, Landroidx/credentials/provider/CustomCredentialEntry;->isAutoSelectAllowed:Z

    .line 7
    iput-object p5, p0, Landroidx/credentials/provider/CustomCredentialEntry;->subtitle:Ljava/lang/CharSequence;

    .line 8
    iput-object p6, p0, Landroidx/credentials/provider/CustomCredentialEntry;->typeDisplayName:Ljava/lang/CharSequence;

    .line 9
    iput-object p7, p0, Landroidx/credentials/provider/CustomCredentialEntry;->icon:Landroid/graphics/drawable/Icon;

    .line 10
    iput-object p8, p0, Landroidx/credentials/provider/CustomCredentialEntry;->lastUsedTime:Ljava/time/Instant;

    .line 11
    iput-boolean p10, p0, Landroidx/credentials/provider/CustomCredentialEntry;->autoSelectAllowedFromOption:Z

    .line 12
    iput-boolean p11, p0, Landroidx/credentials/provider/CustomCredentialEntry;->isDefaultIcon:Z

    .line 13
    invoke-virtual {p0}, Landroidx/credentials/provider/CustomCredentialEntry;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 14
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "title must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v13, v2

    goto :goto_0

    :cond_0
    move/from16 v13, p10

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v14, v2

    goto :goto_1

    :cond_1
    move/from16 v14, p11

    :goto_1
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1
    invoke-direct/range {v3 .. v14}, Landroidx/credentials/provider/CustomCredentialEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZZ)V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;
    .locals 1
    .param p0    # Landroid/app/slice/Slice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/CustomCredentialEntry;->Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CustomCredentialEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/CustomCredentialEntry;)Landroid/app/slice/Slice;
    .locals 1
    .param p0    # Landroidx/credentials/provider/CustomCredentialEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/CustomCredentialEntry;->Companion:Landroidx/credentials/provider/CustomCredentialEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CustomCredentialEntry$Companion;->toSlice(Landroidx/credentials/provider/CustomCredentialEntry;)Landroid/app/slice/Slice;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Icon;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->icon:Landroid/graphics/drawable/Icon;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastUsedTime()Ljava/time/Instant;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->lastUsedTime:Ljava/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->pendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->subtitle:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->title:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTypeDisplayName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->typeDisplayName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isAutoSelectAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/provider/CustomCredentialEntry;->isAutoSelectAllowed:Z

    .line 2
    .line 3
    return v0
.end method
