.class public final synthetic Lom/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lyq/d;


# instance fields
.field public final synthetic a:Lom/k;


# direct methods
.method public synthetic constructor <init>(Lom/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lom/j;->a:Lom/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lom/j;->a:Lom/k;

    .line 2
    .line 3
    check-cast p1, Lio/bidmachine/PrivacySheetData;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lom/k;->m(Lom/k;Lio/bidmachine/PrivacySheetData;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
