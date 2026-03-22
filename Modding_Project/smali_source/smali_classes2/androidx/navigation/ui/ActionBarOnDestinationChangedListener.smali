.class Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;
.super Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.source "ActionBarOnDestinationChangedListener.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mActivity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/ui/AppBarConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p2}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;-><init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
