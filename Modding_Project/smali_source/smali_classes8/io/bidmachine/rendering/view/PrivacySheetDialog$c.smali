.class final Lio/bidmachine/rendering/view/PrivacySheetDialog$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/view/PrivacySheetDialog;->e(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/bidmachine/rendering/view/PrivacySheetDialog;

.field final synthetic e:Lio/bidmachine/rendering/model/PrivacySheetParams$a;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;Lio/bidmachine/rendering/model/PrivacySheetParams$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->d:Lio/bidmachine/rendering/view/PrivacySheetDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->e:Lio/bidmachine/rendering/model/PrivacySheetParams$a;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->d:Lio/bidmachine/rendering/view/PrivacySheetDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->e:Lio/bidmachine/rendering/model/PrivacySheetParams$a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->h(Lio/bidmachine/rendering/view/PrivacySheetDialog;Lio/bidmachine/rendering/model/PrivacySheetParams$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
