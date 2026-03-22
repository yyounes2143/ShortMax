package ad;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BillingClientStateCode.kt */
@Retention(RetentionPolicy.SOURCE)
@Metadata
/* loaded from: classes6.dex */
public @interface l {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f623b = a.f624a;

    /* compiled from: BillingClientStateCode.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f624a = new a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static String f625b = "inapp";
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static String f626c = "subs";

        private a() {
        }

        @NotNull
        public final String a() {
            return f625b;
        }

        @NotNull
        public final String b() {
            return f626c;
        }
    }
}
