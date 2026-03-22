package com.startshorts.androidplayer.bean.tab;

import com.bytedance.applog.log.LogUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ss.a;
/* compiled from: MainTab.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MainTab {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Object extra;
    @NotNull
    private State state;
    @NotNull
    private final Type type;

    /* compiled from: MainTab.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMainTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainTab.kt\ncom/startshorts/androidplayer/bean/tab/MainTab$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,42:1\n1310#2,2:43\n*S KotlinDebug\n*F\n+ 1 MainTab.kt\ncom/startshorts/androidplayer/bean/tab/MainTab$Companion\n*L\n20#1:43,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isValidType(@NotNull String enumName) {
            Intrinsics.checkNotNullParameter(enumName, "enumName");
            if (toEnum(enumName) != null) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Type toEnum(@NotNull String enumName) {
            Intrinsics.checkNotNullParameter(enumName, "enumName");
            Type[] typeArr = (Type[]) Type.class.getEnumConstants();
            if (typeArr == null) {
                return null;
            }
            for (Type type : typeArr) {
                if (Intrinsics.areEqual(type.name(), enumName)) {
                    return type;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: MainTab.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class State {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State SELECTED = new State("SELECTED", 0);
        public static final State UNSELECTED = new State("UNSELECTED", 1);

        private static final /* synthetic */ State[] $values() {
            return new State[]{SELECTED, UNSELECTED};
        }

        static {
            State[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private State(String str, int i10) {
        }

        @NotNull
        public static a<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: MainTab.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Type {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type DISCOVER = new Type("DISCOVER", 0);
        public static final Type SHORTS = new Type("SHORTS", 1);
        public static final Type MY_LIST = new Type("MY_LIST", 2);
        public static final Type REWARDS = new Type("REWARDS", 3);
        public static final Type PROFILE = new Type(LogUtils.EVENT_TYPE_PROFILE, 4);
        public static final Type ACT = new Type("ACT", 5);

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{DISCOVER, SHORTS, MY_LIST, REWARDS, PROFILE, ACT};
        }

        static {
            Type[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Type(String str, int i10) {
        }

        @NotNull
        public static a<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public MainTab(@NotNull Type type, @NotNull State state, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        this.type = type;
        this.state = state;
        this.extra = obj;
    }

    public static /* synthetic */ MainTab copy$default(MainTab mainTab, Type type, State state, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            type = mainTab.type;
        }
        if ((i10 & 2) != 0) {
            state = mainTab.state;
        }
        if ((i10 & 4) != 0) {
            obj = mainTab.extra;
        }
        return mainTab.copy(type, state, obj);
    }

    @NotNull
    public final Type component1() {
        return this.type;
    }

    @NotNull
    public final State component2() {
        return this.state;
    }

    @Nullable
    public final Object component3() {
        return this.extra;
    }

    @NotNull
    public final MainTab copy(@NotNull Type type, @NotNull State state, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        return new MainTab(type, state, obj);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MainTab)) {
            return false;
        }
        MainTab mainTab = (MainTab) obj;
        if (this.type == mainTab.type && this.state == mainTab.state && Intrinsics.areEqual(this.extra, mainTab.extra)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object getExtra() {
        return this.extra;
    }

    @NotNull
    public final State getState() {
        return this.state;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.type.hashCode() * 31) + this.state.hashCode()) * 31;
        Object obj = this.extra;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final boolean isSelected() {
        if (this.state == State.SELECTED) {
            return true;
        }
        return false;
    }

    public final void setExtra(@Nullable Object obj) {
        this.extra = obj;
    }

    public final void setState(@NotNull State state) {
        Intrinsics.checkNotNullParameter(state, "<set-?>");
        this.state = state;
    }

    @NotNull
    public String toString() {
        return "MainTab(type=" + this.type + ", state=" + this.state + ", extra=" + this.extra + ')';
    }

    public /* synthetic */ MainTab(Type type, State state, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, (i10 & 2) != 0 ? State.UNSELECTED : state, (i10 & 4) != 0 ? null : obj);
    }
}
