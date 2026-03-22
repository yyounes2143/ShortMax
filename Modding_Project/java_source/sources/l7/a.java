package l7;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.abt.AbtException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import n7.a;
/* compiled from: AbtExperimentInfo.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f62090g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    static final DateFormat f62091h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* renamed from: a  reason: collision with root package name */
    private final String f62092a;

    /* renamed from: b  reason: collision with root package name */
    private final String f62093b;

    /* renamed from: c  reason: collision with root package name */
    private final String f62094c;

    /* renamed from: d  reason: collision with root package name */
    private final Date f62095d;

    /* renamed from: e  reason: collision with root package name */
    private final long f62096e;

    /* renamed from: f  reason: collision with root package name */
    private final long f62097f;

    public a(String str, String str2, String str3, Date date, long j10, long j11) {
        this.f62092a = str;
        this.f62093b = str2;
        this.f62094c = str3;
        this.f62095d = date;
        this.f62096e = j10;
        this.f62097f = j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(a.c cVar) {
        String str = cVar.f62846d;
        if (str == null) {
            str = "";
        }
        return new a(cVar.f62844b, String.valueOf(cVar.f62845c), str, new Date(cVar.f62855m), cVar.f62847e, cVar.f62852j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(Map<String, String> map) throws AbtException {
        String str;
        g(map);
        try {
            Date parse = f62091h.parse(map.get("experimentStartTime"));
            long parseLong = Long.parseLong(map.get("triggerTimeoutMillis"));
            long parseLong2 = Long.parseLong(map.get("timeToLiveMillis"));
            String str2 = map.get("experimentId");
            String str3 = map.get("variantId");
            if (map.containsKey("triggerEvent")) {
                str = map.get("triggerEvent");
            } else {
                str = "";
            }
            return new a(str2, str3, str, parse, parseLong, parseLong2);
        } catch (NumberFormatException e10) {
            throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e10);
        } catch (ParseException e11) {
            throw new AbtException("Could not process experiment: parsing experiment start time failed.", e11);
        }
    }

    private static void g(Map<String, String> map) throws AbtException {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : f62090g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.f62092a;
    }

    long d() {
        return this.f62095d.getTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.f62093b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a.c f(String str) {
        String str2;
        a.c cVar = new a.c();
        cVar.f62843a = str;
        cVar.f62855m = d();
        cVar.f62844b = this.f62092a;
        cVar.f62845c = this.f62093b;
        if (TextUtils.isEmpty(this.f62094c)) {
            str2 = null;
        } else {
            str2 = this.f62094c;
        }
        cVar.f62846d = str2;
        cVar.f62847e = this.f62096e;
        cVar.f62852j = this.f62097f;
        return cVar;
    }
}
