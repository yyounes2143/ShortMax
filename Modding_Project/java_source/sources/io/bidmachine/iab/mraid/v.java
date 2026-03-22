package io.bidmachine.iab.mraid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes7.dex */
final class v {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final DateFormat f54656a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.US);
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    static final String[] f54657b = {"SU", "MO", "TU", "WE", "TH", "FR", "SA"};

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public d a(@NonNull String str) {
        return e(new JSONObject(str));
    }

    @NonNull
    @VisibleForTesting
    String b(@NonNull JSONArray jSONArray) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (i10 > 0) {
                sb2.append(",");
            }
            int i11 = jSONArray.getInt(i10);
            if (i11 >= 0 && i11 <= 6) {
                sb2.append(f54657b[i11]);
            }
        }
        return sb2.toString();
    }

    @Nullable
    @VisibleForTesting
    String c(@NonNull JSONObject jSONObject) {
        StringBuilder sb2 = new StringBuilder();
        g(jSONObject, sb2);
        h(jSONObject, sb2);
        d(jSONObject, sb2);
        j(jSONObject, sb2);
        i(jSONObject, sb2);
        k(jSONObject, sb2);
        if (sb2.length() > 0) {
            return sb2.toString();
        }
        return null;
    }

    @VisibleForTesting
    void d(@NonNull JSONObject jSONObject, @NonNull StringBuilder sb2) {
        if (!jSONObject.isNull("expires")) {
            try {
                Date parse = f54656a.parse(jSONObject.getString("expires"));
                sb2.append("UNTIL=");
                sb2.append(parse);
                sb2.append(";");
            } catch (Exception unused) {
            }
        }
    }

    @NonNull
    d e(@NonNull JSONObject jSONObject) {
        String string = jSONObject.getString(InMobiNetworkValues.DESCRIPTION);
        Objects.requireNonNull(string);
        DateFormat dateFormat = f54656a;
        Date parse = dateFormat.parse(jSONObject.getString("start"));
        Objects.requireNonNull(parse);
        d dVar = new d(string, parse);
        if (jSONObject.has("location")) {
            dVar.a(jSONObject.getString("location"));
        }
        if (jSONObject.has("summary")) {
            dVar.e(jSONObject.getString("summary"));
        }
        if (jSONObject.has("end")) {
            dVar.b(dateFormat.parse(jSONObject.getString("end")));
        }
        if (jSONObject.has("status")) {
            dVar.d(jSONObject.getString("status"));
        }
        if (jSONObject.has("transparency")) {
            dVar.f(jSONObject.getString("transparency"));
        }
        if (jSONObject.has("recurrence")) {
            dVar.c(c(jSONObject.getJSONObject("recurrence")));
        }
        return dVar;
    }

    @NonNull
    @VisibleForTesting
    String f(@NonNull JSONArray jSONArray) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (i10 > 0) {
                sb2.append(",");
            }
            sb2.append(jSONArray.get(i10).toString());
        }
        return sb2.toString();
    }

    @VisibleForTesting
    void g(@NonNull JSONObject jSONObject, @NonNull StringBuilder sb2) {
        if (!jSONObject.isNull("frequency")) {
            try {
                sb2.append("FREQ=");
                sb2.append(jSONObject.getString("frequency"));
                sb2.append(";");
            } catch (Exception unused) {
            }
        }
    }

    @VisibleForTesting
    void h(@NonNull JSONObject jSONObject, @NonNull StringBuilder sb2) {
        if (!jSONObject.isNull("interval")) {
            try {
                sb2.append("INTERVAL=");
                sb2.append(jSONObject.getInt("interval"));
                sb2.append(";");
            } catch (Exception unused) {
            }
        }
    }

    @VisibleForTesting
    void i(@NonNull JSONObject jSONObject, @NonNull StringBuilder sb2) {
        try {
            if (!jSONObject.isNull("frequency") && "monthly".equalsIgnoreCase(jSONObject.getString("frequency"))) {
                if (!jSONObject.isNull("daysInMonth")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("daysInMonth");
                    if (jSONArray.length() > 0) {
                        sb2.append("BYMONTHDAY=");
                        sb2.append(f(jSONArray));
                        sb2.append(";");
                    }
                }
                if (!jSONObject.isNull("weeksInMonth")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("weeksInMonth");
                    if (jSONArray2.length() > 0) {
                        sb2.append("BYWEEKNO=");
                        sb2.append(f(jSONArray2));
                        sb2.append(";");
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    @VisibleForTesting
    void j(@NonNull JSONObject jSONObject, @NonNull StringBuilder sb2) {
        try {
            if (!jSONObject.isNull("frequency") && "weekly".equalsIgnoreCase(jSONObject.getString("frequency")) && !jSONObject.isNull("daysInWeek")) {
                JSONArray jSONArray = jSONObject.getJSONArray("daysInWeek");
                if (jSONArray.length() > 0) {
                    sb2.append("BYDAY=");
                    sb2.append(b(jSONArray));
                    sb2.append(";");
                }
            }
        } catch (Exception unused) {
        }
    }

    @VisibleForTesting
    void k(@NonNull JSONObject jSONObject, @NonNull StringBuilder sb2) {
        try {
            if (!jSONObject.isNull("frequency") && "yearly".equalsIgnoreCase(jSONObject.getString("frequency"))) {
                if (!jSONObject.isNull("monthsInYear")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("monthsInYear");
                    if (jSONArray.length() > 0) {
                        sb2.append("BYMONTH=");
                        sb2.append(f(jSONArray));
                        sb2.append(";");
                    }
                }
                if (!jSONObject.isNull("daysInYear")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("daysInYear");
                    if (jSONArray2.length() > 0) {
                        sb2.append("BYYEARDAY=");
                        sb2.append(f(jSONArray2));
                        sb2.append(";");
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
