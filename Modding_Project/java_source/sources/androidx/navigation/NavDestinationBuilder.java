package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.navigation.NavDestination;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NavDestinationBuilder.kt */
@NavDestinationDsl
@Metadata
/* loaded from: classes2.dex */
public class NavDestinationBuilder<D extends NavDestination> {
    private Map<Integer, NavAction> actions;
    private Map<String, NavArgument> arguments;
    private List<NavDeepLink> deepLinks;

    /* renamed from: id  reason: collision with root package name */
    private final int f1566id;
    @Nullable
    private CharSequence label;
    @NotNull
    private final Navigator<? extends D> navigator;

    public NavDestinationBuilder(@NotNull Navigator<? extends D> navigator, @IdRes int i10) {
        Intrinsics.checkParameterIsNotNull(navigator, "navigator");
        this.navigator = navigator;
        this.f1566id = i10;
        this.arguments = new LinkedHashMap();
        this.deepLinks = new ArrayList();
        this.actions = new LinkedHashMap();
    }

    public final void action(int i10, @NotNull Function1<? super NavActionBuilder, Unit> actionBuilder) {
        Intrinsics.checkParameterIsNotNull(actionBuilder, "actionBuilder");
        Map<Integer, NavAction> map = this.actions;
        Integer valueOf = Integer.valueOf(i10);
        NavActionBuilder navActionBuilder = new NavActionBuilder();
        actionBuilder.invoke(navActionBuilder);
        map.put(valueOf, navActionBuilder.build$navigation_common_ktx_release());
    }

    public final void argument(@NotNull String name, @NotNull Function1<? super NavArgumentBuilder, Unit> argumentBuilder) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(argumentBuilder, "argumentBuilder");
        Map<String, NavArgument> map = this.arguments;
        NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
        argumentBuilder.invoke(navArgumentBuilder);
        map.put(name, navArgumentBuilder.build());
    }

    @NotNull
    public D build() {
        D createDestination = this.navigator.createDestination();
        createDestination.setId(this.f1566id);
        createDestination.setLabel(this.label);
        for (Map.Entry<String, NavArgument> entry : this.arguments.entrySet()) {
            createDestination.addArgument(entry.getKey(), entry.getValue());
        }
        for (NavDeepLink navDeepLink : this.deepLinks) {
            createDestination.addDeepLink(navDeepLink);
        }
        for (Map.Entry<Integer, NavAction> entry2 : this.actions.entrySet()) {
            createDestination.putAction(entry2.getKey().intValue(), entry2.getValue());
        }
        return createDestination;
    }

    public final void deepLink(@NotNull String uriPattern) {
        Intrinsics.checkParameterIsNotNull(uriPattern, "uriPattern");
        this.deepLinks.add(new NavDeepLink(uriPattern));
    }

    public final int getId() {
        return this.f1566id;
    }

    @Nullable
    public final CharSequence getLabel() {
        return this.label;
    }

    @NotNull
    protected final Navigator<? extends D> getNavigator() {
        return this.navigator;
    }

    public final void setLabel(@Nullable CharSequence charSequence) {
        this.label = charSequence;
    }

    public final void deepLink(@NotNull Function1<? super NavDeepLinkDslBuilder, Unit> navDeepLink) {
        Intrinsics.checkParameterIsNotNull(navDeepLink, "navDeepLink");
        List<NavDeepLink> list = this.deepLinks;
        NavDeepLinkDslBuilder navDeepLinkDslBuilder = new NavDeepLinkDslBuilder();
        navDeepLink.invoke(navDeepLinkDslBuilder);
        list.add(navDeepLinkDslBuilder.build$navigation_common_ktx_release());
    }
}
