.class public final Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerApi31Ext9Impl;
.super Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;
.source "AppSetIdManagerApi31Ext9Impl.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
    extension = 0x1f
    version = 0x9
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/a;->a(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "get(context)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;-><init>(Landroid/adservices/appsetid/AppSetIdManager;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
