.class public final synthetic Lcom/applovin/impl/privacy/cmp/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/privacy/cmp/a;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/applovin/impl/privacy/cmp/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/cmp/a;Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/b;->a:Lcom/applovin/impl/privacy/cmp/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/privacy/cmp/b;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/privacy/cmp/b;->c:Lcom/applovin/impl/privacy/cmp/a$a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/b;->a:Lcom/applovin/impl/privacy/cmp/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/privacy/cmp/b;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/privacy/cmp/b;->c:Lcom/applovin/impl/privacy/cmp/a$a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/privacy/cmp/a;->b(Lcom/applovin/impl/privacy/cmp/a;Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/a$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
