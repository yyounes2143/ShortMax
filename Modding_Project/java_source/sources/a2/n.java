package a2;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SourceApplicationInfo.kt */
@Metadata
/* loaded from: classes3.dex */
public final class n {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f99c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f100a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f101b;

    /* compiled from: SourceApplicationInfo.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(v.l()).edit();
            edit.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
            edit.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
            edit.apply();
        }

        @Nullable
        public final n b() {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(v.l());
            if (!defaultSharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
                return null;
            }
            return new n(defaultSharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false), null);
        }

        private a() {
        }
    }

    public /* synthetic */ n(String str, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z10);
    }

    public final void a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(v.l()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f100a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f101b);
        edit.apply();
    }

    @NotNull
    public String toString() {
        String str;
        if (this.f101b) {
            str = "Applink";
        } else {
            str = "Unclassified";
        }
        if (this.f100a != null) {
            return str + '(' + this.f100a + ')';
        }
        return str;
    }

    private n(String str, boolean z10) {
        this.f100a = str;
        this.f101b = z10;
    }
}
