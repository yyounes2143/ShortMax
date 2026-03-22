.class public final synthetic Landroidx/browser/customtabs/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/CustomTabsService$1;

.field public final synthetic b:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/a;->a:Landroidx/browser/customtabs/CustomTabsService$1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/customtabs/a;->b:Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/a;->a:Landroidx/browser/customtabs/CustomTabsService$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/a;->b:Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsService$1;->i(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
