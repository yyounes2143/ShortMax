.class public final synthetic Landroidx/webkit/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/webkit/RestrictionAllowlist$ConfigTask;


# instance fields
.field public final synthetic a:Landroidx/webkit/RestrictionAllowlist$Builder;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/a;->a:Landroidx/webkit/RestrictionAllowlist$Builder;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/webkit/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/webkit/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/a;->a:Landroidx/webkit/RestrictionAllowlist$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Landroidx/webkit/RestrictionAllowlist$Builder;->a(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
